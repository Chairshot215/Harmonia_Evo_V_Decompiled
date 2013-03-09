.class public Lcom/htc/fusion/fx/FxPerfLog;
.super Ljava/lang/Object;
.source "FxPerfLog.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/htc/fusion/fx/FxObject;->loadNativeLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addColumnToProcess(Ljava/lang/String;)V
.end method

.method public static native dumpLog(Ljava/lang/String;)Z
.end method

.method public static native getAverage(Ljava/lang/String;)D
.end method

.method public static native getFrame()I
.end method

.method public static native getLoggingFile()Ljava/lang/String;
.end method

.method public static native getStandardDeviation(Ljava/lang/String;)D
.end method

.method public static native includeFramesWithBoundaries(Ljava/lang/String;DD)V
.end method

.method public static native includeOnlyFrames(II)V
.end method

.method public static native includeOnlyTime(DD)V
.end method

.method public static native openFileForSummary(Ljava/lang/String;)Z
.end method

.method public static native perfReportsEnabled()Z
.end method

.method public static native process()V
.end method

.method public static native processAllColumns()V
.end method

.method public static native setLoggingFile(Ljava/lang/String;)Z
.end method

.method public static native startLogging()Z
.end method

.method public static native startLoggingAtFrame(I)V
.end method

.method public static native startLoggingAtTime(J)V
.end method

.method public static native stopLogging()V
.end method

.method public static native stopLoggingAtFrame(I)V
.end method

.method public static native stopLoggingAtTime(J)V
.end method

.method public static native writePerfReport(Ljava/lang/String;)Z
.end method

.method public static native writeSummaryFile(Ljava/lang/String;)Z
.end method
