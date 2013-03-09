.class Lcom/android/mms/ui/EditSlideDurationActivity$2;
.super Ljava/lang/Object;
.source "EditSlideDurationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EditSlideDurationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EditSlideDurationActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EditSlideDurationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/mms/ui/EditSlideDurationActivity$2;->this$0:Lcom/android/mms/ui/EditSlideDurationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/EditSlideDurationActivity$2;->this$0:Lcom/android/mms/ui/EditSlideDurationActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/EditSlideDurationActivity;->editDone()V

    .line 195
    return-void
.end method
