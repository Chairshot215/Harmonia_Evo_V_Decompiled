.class Lcom/android/mms/ui/ComposeMessageActivity$64;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageBodyEditor$OnContentChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initResourceRefs()V
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
    .line 12080
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$64;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 1

    .prologue
    .line 12083
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$64;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateMessageBodyContentUI()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12500(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 12085
    return-void
.end method
