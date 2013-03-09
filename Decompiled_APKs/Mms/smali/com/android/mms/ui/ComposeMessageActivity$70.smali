.class Lcom/android/mms/ui/ComposeMessageActivity$70;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageListView$TextSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initMessageList(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 12689
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextSizeChanged(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 12691
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->setTextLevel(I)V
    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13200(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 12692
    return-void
.end method
