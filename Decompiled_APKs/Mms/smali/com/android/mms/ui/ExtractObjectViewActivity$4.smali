.class Lcom/android/mms/ui/ExtractObjectViewActivity$4;
.super Ljava/lang/Object;
.source "ExtractObjectViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ExtractObjectViewActivity;->initButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ExtractObjectViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$4;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/mms/ui/ExtractObjectViewActivity$4;->this$0:Lcom/android/mms/ui/ExtractObjectViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ExtractObjectViewActivity;->finish()V

    .line 403
    return-void
.end method
