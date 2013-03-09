.class Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$1;
.super Ljava/lang/Object;
.source "ClientReportLogger.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/GservicesHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;


# direct methods
.method constructor <init>(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$1;->this$0:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$1;->this$0:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    new-instance v1, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$1;->this$0:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    #getter for: Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;
    invoke-static {v2}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->access$100(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;)Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/voicesearch/GservicesHelper;->getImeEditDistanceMaxContiguousChars()I

    move-result v2

    int-to-byte v2, v2

    iget-object v3, p0, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger$1;->this$0:Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;

    #getter for: Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mGservicesHelper:Lcom/google/android/voicesearch/GservicesHelper;
    invoke-static {v3}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->access$100(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;)Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/voicesearch/GservicesHelper;->getImeEditDistanceMaxNewCharsPerc()I

    move-result v3

    int-to-byte v3, v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/voicesearch/ime/EditDistanceCalculator;-><init>(BB)V

    #setter for: Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->mEditDistance:Lcom/google/android/voicesearch/ime/EditDistanceCalculator;
    invoke-static {v0, v1}, Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;->access$002(Lcom/google/android/voicesearch/speechservice/report/ClientReportLogger;Lcom/google/android/voicesearch/ime/EditDistanceCalculator;)Lcom/google/android/voicesearch/ime/EditDistanceCalculator;

    .line 130
    return-void
.end method
