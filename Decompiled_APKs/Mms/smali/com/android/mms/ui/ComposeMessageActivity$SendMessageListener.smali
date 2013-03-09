.class Lcom/android/mms/ui/ComposeMessageActivity$SendMessageListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2393
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2393
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$SendMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->confirmNetworkBeforeSend()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5400(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 2397
    return-void
.end method
