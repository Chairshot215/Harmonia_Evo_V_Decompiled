.class Lcom/android/mms/ui/ComposeMessageActivity$52$3;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$52;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$52;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$52;)V
    .locals 0
    .parameter

    .prologue
    .line 10047
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$52$3;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$52;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 10049
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/ui/ComposeMessageActivity;->sel_value_thread:I

    .line 10050
    return-void
.end method
