.class Lcom/android/mms/ui/MultipleDeleteActivity$8;
.super Ljava/lang/Object;
.source "MultipleDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultipleDeleteActivity;->initDeleteButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultipleDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultipleDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$8;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$8;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->finish()V

    .line 1398
    return-void
.end method
