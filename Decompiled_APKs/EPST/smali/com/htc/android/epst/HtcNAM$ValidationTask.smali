.class Lcom/htc/android/epst/HtcNAM$ValidationTask;
.super Landroid/os/AsyncTask;
.source "HtcNAM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/HtcNAM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/HtcNAM;


# direct methods
.method private constructor <init>(Lcom/htc/android/epst/HtcNAM;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/android/epst/HtcNAM$ValidationTask;->this$0:Lcom/htc/android/epst/HtcNAM;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/epst/HtcNAM;Lcom/htc/android/epst/HtcNAM$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/htc/android/epst/HtcNAM$ValidationTask;-><init>(Lcom/htc/android/epst/HtcNAM;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "arg0"

    .prologue
    .line 85
    new-instance v0, Lcom/htc/android/epst/CdmaSettingUpdater;

    invoke-direct {v0}, Lcom/htc/android/epst/CdmaSettingUpdater;-><init>()V

    .line 86
    .local v0, updater:Lcom/htc/android/epst/SettingValueUpdater;
    iget-object v1, p0, Lcom/htc/android/epst/HtcNAM$ValidationTask;->this$0:Lcom/htc/android/epst/HtcNAM;

    invoke-static {}, Lcom/htc/android/epst/HtcNAM;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/android/epst/SettingValueUpdater;->anthenticate(Lcom/htc/android/epst/HtcNAM;Ljava/lang/String;)V

    .line 88
    const/4 v1, 0x0

    return-object v1
.end method
