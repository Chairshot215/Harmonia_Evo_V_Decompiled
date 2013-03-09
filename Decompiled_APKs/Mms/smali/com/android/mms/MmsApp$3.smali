.class Lcom/android/mms/MmsApp$3;
.super Ljava/lang/Object;
.source "MmsApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/MmsApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/MmsApp;


# direct methods
.method constructor <init>(Lcom/android/mms/MmsApp;)V
    .locals 0
    .parameter

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/android/mms/MmsApp$3;->this$0:Lcom/android/mms/MmsApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1285
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/task/UpdateDate2Task;->getEmptyDate2Count(Landroid/content/Context;)I

    move-result v0

    .line 1286
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1287
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/MmsApp;->mNeedToUpdateDate2:Z

    .line 1289
    :cond_0
    const-string v1, "Messaging"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNeedToUpdateDate2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/MmsApp;->mNeedToUpdateDate2:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    return-void
.end method
