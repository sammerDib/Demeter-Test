var target = Argument("target", "Build");
var configuration = Argument("configuration", "Release");

//////////////////////////////////////////////////////////////////////
// TASKS
//////////////////////////////////////////////////////////////////////

var solutions            = GetFiles("./**/*.sln");

// ImageAnalysis and its wrapper are compiled separately for now
var imageAnalysis        = GetFiles("./**/ImageAnalysis.sln");
var imageAnalysisWrapper = GetFiles("./**/AnalyseImageAnalysis.sln");
var wrapperTests         = GetFiles("./**/WrapperUnitTests.sln");
solutions.Remove(imageAnalysis);
solutions.Remove(imageAnalysisWrapper);
solutions.Remove(wrapperTests);



var solutionPaths       = solutions.Select(solution => solution.GetDirectory());

Task("Restore")
    .Does(() =>
{
    // Restore all NuGet packages.
    foreach(var solution in solutions)
    {
        Information("Restoring {0}...", solution);
        NuGetRestore(solution);
    }
});

Task("Build")
    .IsDependentOn("Restore")
    .Does(() =>
{
    // Build all solutions.
    foreach(var solution in solutions)
    {
        Information("Building {0}", solution);
        MSBuild(solution, settings =>
            settings.SetPlatformTarget(PlatformTarget.MSIL)
                .WithProperty("TreatWarningsAsErrors","no")
                .WithTarget("Build")
                .SetConfiguration(configuration));
    }
});

Task("Clean")
    .Does(() =>
{
    // Clean solution directories.
    foreach(var path in solutionPaths)
    {
        Information("Cleaning {0}", path);
        CleanDirectories(path + "/**/bin/" + configuration);
        CleanDirectories(path + "/**/obj/" + configuration);
    }
});

//////////////////////////////////////////////////////////////////////
// EXECUTION
//////////////////////////////////////////////////////////////////////

RunTarget(target);
