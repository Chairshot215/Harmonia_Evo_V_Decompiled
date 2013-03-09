.class Lcom/google/android/finsky/activities/FlagItemFragment$1;
.super Ljava/lang/Object;
.source "FlagItemFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/FlagItemFragment;->onInitViewBinders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/FlagItemFragment;

.field final synthetic val$buttonBar:Lcom/google/android/finsky/layout/ButtonBar;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/FlagItemFragment;Lcom/google/android/finsky/layout/ButtonBar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/finsky/activities/FlagItemFragment$1;->this$0:Lcom/google/android/finsky/activities/FlagItemFragment;

    iput-object p2, p0, Lcom/google/android/finsky/activities/FlagItemFragment$1;->val$buttonBar:Lcom/google/android/finsky/layout/ButtonBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment$1;->val$buttonBar:Lcom/google/android/finsky/layout/ButtonBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ButtonBar;->setPositiveButtonEnabled(Z)V

    .line 112
    return-void
.end method
