.class Lcom/android/mms/ui/MessageTextEditor$2;
.super Ljava/lang/Object;
.source "MessageTextEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageTextEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageTextEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageTextEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 904
    iput-object p1, p0, Lcom/android/mms/ui/MessageTextEditor$2;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/mms/ui/MessageTextEditor$2;->this$0:Lcom/android/mms/ui/MessageTextEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageTextEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09037f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 908
    return-void
.end method
