.class Lcom/htc/launcher/Launcher$TiltSettingQueryAsyncTask;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TiltSettingQueryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/htc/launcher/Launcher$TiltSettingQueryAsyncTask;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/Launcher;Lcom/htc/launcher/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 815
    invoke-direct {p0, p1}, Lcom/htc/launcher/Launcher$TiltSettingQueryAsyncTask;-><init>(Lcom/htc/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 815
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/launcher/Launcher$TiltSettingQueryAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "Void"

    .prologue
    .line 819
    iget-object v0, p0, Lcom/htc/launcher/Launcher$TiltSettingQueryAsyncTask;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rosie_complete_starting"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 820
    iget-object v0, p0, Lcom/htc/launcher/Launcher$TiltSettingQueryAsyncTask;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->loadSettings()V
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$1000(Lcom/htc/launcher/Launcher;)V

    .line 821
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 815
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/launcher/Launcher$TiltSettingQueryAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 826
    iget-object v0, p0, Lcom/htc/launcher/Launcher$TiltSettingQueryAsyncTask;->this$0:Lcom/htc/launcher/Launcher;

    #getter for: Lcom/htc/launcher/Launcher;->mSettingsCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$1100(Lcom/htc/launcher/Launcher;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 829
    :goto_0
    return-void

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/Launcher$TiltSettingQueryAsyncTask;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->addTiltSettingObserver()V
    invoke-static {v0}, Lcom/htc/launcher/Launcher;->access$1200(Lcom/htc/launcher/Launcher;)V

    goto :goto_0
.end method
