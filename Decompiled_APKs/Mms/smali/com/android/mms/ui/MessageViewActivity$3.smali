.class Lcom/android/mms/ui/MessageViewActivity$3;
.super Ljava/lang/Object;
.source "MessageViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageViewActivity;->bindCollapseView(Lcom/android/mms/msg/MultimediaMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageViewActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/android/mms/ui/MessageViewActivity$3;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$3;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #calls: Lcom/android/mms/ui/MessageViewActivity;->playSlideshow()V
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$300(Lcom/android/mms/ui/MessageViewActivity;)V

    .line 1134
    return-void
.end method
