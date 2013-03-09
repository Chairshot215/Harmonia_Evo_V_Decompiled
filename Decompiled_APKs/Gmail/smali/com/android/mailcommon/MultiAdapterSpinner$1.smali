.class Lcom/android/mailcommon/MultiAdapterSpinner$1;
.super Ljava/lang/Object;
.source "MultiAdapterSpinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mailcommon/MultiAdapterSpinner;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mailcommon/MultiAdapterSpinner;

.field final synthetic val$result:Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;


# direct methods
.method constructor <init>(Lcom/android/mailcommon/MultiAdapterSpinner;Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/mailcommon/MultiAdapterSpinner$1;->this$0:Lcom/android/mailcommon/MultiAdapterSpinner;

    iput-object p2, p0, Lcom/android/mailcommon/MultiAdapterSpinner$1;->val$result:Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/mailcommon/MultiAdapterSpinner$1;->val$result:Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;

    iget-object v0, v0, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/android/mailcommon/MergedAdapter$ListSpinnerAdapter;

    check-cast v0, Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;

    iget-object v1, p0, Lcom/android/mailcommon/MultiAdapterSpinner$1;->val$result:Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;

    iget v1, v1, Lcom/android/mailcommon/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    invoke-interface {v0, v1}, Lcom/android/mailcommon/MultiAdapterSpinner$FancySpinnerAdapter;->onClick(I)V

    .line 179
    return-void
.end method
