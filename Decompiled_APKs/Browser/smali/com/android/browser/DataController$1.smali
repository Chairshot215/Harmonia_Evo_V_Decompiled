.class Lcom/android/browser/DataController$1;
.super Landroid/os/Handler;
.source "DataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/DataController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/DataController;


# direct methods
.method constructor <init>(Lcom/android/browser/DataController;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/browser/DataController$1;->this$0:Lcom/android/browser/DataController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 80
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/browser/DataController$CallbackContainer;

    .line 81
    .local v1, cc:Lcom/android/browser/DataController$CallbackContainer;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget-object v0, v1, Lcom/android/browser/DataController$CallbackContainer;->replyTo:Ljava/lang/Object;

    check-cast v0, Lcom/android/browser/DataController$OnQueryUrlIsBookmark;

    .line 84
    .local v0, cb:Lcom/android/browser/DataController$OnQueryUrlIsBookmark;
    iget-object v4, v1, Lcom/android/browser/DataController$CallbackContainer;->args:[Ljava/lang/Object;

    const/4 v5, 0x0

    aget-object v3, v4, v5

    check-cast v3, Ljava/lang/String;

    .line 85
    .local v3, url:Ljava/lang/String;
    iget-object v4, v1, Lcom/android/browser/DataController$CallbackContainer;->args:[Ljava/lang/Object;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 86
    .local v2, isBookmark:Z
    invoke-interface {v0, v3, v2}, Lcom/android/browser/DataController$OnQueryUrlIsBookmark;->onQueryUrlIsBookmark(Ljava/lang/String;Z)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
