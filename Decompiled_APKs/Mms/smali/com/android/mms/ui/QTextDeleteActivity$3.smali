.class Lcom/android/mms/ui/QTextDeleteActivity$3;
.super Ljava/lang/Object;
.source "QTextDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/QTextDeleteActivity;->initDeleteButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/QTextDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/QTextDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/mms/ui/QTextDeleteActivity$3;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/QTextDeleteActivity$3;->this$0:Lcom/android/mms/ui/QTextDeleteActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/QTextDeleteActivity;->finish()V

    .line 213
    return-void
.end method
