.class Lcom/googlecode/android/wifi/tether/AccessControlActivity$1;
.super Landroid/os/Handler;
.source "AccessControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/android/wifi/tether/AccessControlActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    .line 187
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/AccessControlActivity$1;->this$0:Lcom/googlecode/android/wifi/tether/AccessControlActivity;

    #calls: Lcom/googlecode/android/wifi/tether/AccessControlActivity;->updateListView()V
    invoke-static {v0}, Lcom/googlecode/android/wifi/tether/AccessControlActivity;->access$0(Lcom/googlecode/android/wifi/tether/AccessControlActivity;)V

    .line 190
    return-void
.end method
