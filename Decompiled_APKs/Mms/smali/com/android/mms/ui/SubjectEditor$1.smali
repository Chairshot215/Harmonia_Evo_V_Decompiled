.class Lcom/android/mms/ui/SubjectEditor$1;
.super Ljava/lang/Object;
.source "SubjectEditor.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SubjectEditor;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SubjectEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SubjectEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/mms/ui/SubjectEditor$1;->this$0:Lcom/android/mms/ui/SubjectEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    const/16 v1, 0x43

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SubjectEditor$1;->this$0:Lcom/android/mms/ui/SubjectEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/SubjectEditor;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/SubjectEditor$1;->this$0:Lcom/android/mms/ui/SubjectEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/SubjectEditor;->deactivate()V

    .line 102
    const/4 v0, 0x1

    goto :goto_0
.end method
