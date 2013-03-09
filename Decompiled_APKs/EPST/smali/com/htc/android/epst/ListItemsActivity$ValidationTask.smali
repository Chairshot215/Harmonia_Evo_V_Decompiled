.class Lcom/htc/android/epst/ListItemsActivity$ValidationTask;
.super Landroid/os/AsyncTask;
.source "ListItemsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/ListItemsActivity;
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
.field final synthetic this$0:Lcom/htc/android/epst/ListItemsActivity;


# direct methods
.method private constructor <init>(Lcom/htc/android/epst/ListItemsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$ValidationTask;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/epst/ListItemsActivity;Lcom/htc/android/epst/ListItemsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1412
    invoke-direct {p0, p1}, Lcom/htc/android/epst/ListItemsActivity$ValidationTask;-><init>(Lcom/htc/android/epst/ListItemsActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "arg0"

    .prologue
    .line 1417
    new-instance v0, Lcom/htc/android/epst/CdmaSettingUpdater;

    invoke-direct {v0}, Lcom/htc/android/epst/CdmaSettingUpdater;-><init>()V

    .line 1418
    .local v0, updater:Lcom/htc/android/epst/SettingValueUpdater;
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$ValidationTask;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    iget-object v2, p0, Lcom/htc/android/epst/ListItemsActivity$ValidationTask;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mPassword:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/epst/ListItemsActivity;->access$1300(Lcom/htc/android/epst/ListItemsActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/htc/android/epst/SettingValueUpdater;->anthenticate(Lcom/htc/android/epst/ListItemsActivity;Ljava/lang/String;)V

    .line 1420
    const/4 v1, 0x0

    return-object v1
.end method
