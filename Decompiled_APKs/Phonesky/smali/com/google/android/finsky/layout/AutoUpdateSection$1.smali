.class Lcom/google/android/finsky/layout/AutoUpdateSection$1;
.super Ljava/lang/Object;
.source "AutoUpdateSection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/AutoUpdateSection;->bind(Ljava/lang/String;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/receivers/Installer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/AutoUpdateSection;

.field final synthetic val$isAutoUpdateEnabled:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AutoUpdateSection;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$1;->this$0:Lcom/google/android/finsky/layout/AutoUpdateSection;

    iput-boolean p2, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$1;->val$isAutoUpdateEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$1;->this$0:Lcom/google/android/finsky/layout/AutoUpdateSection;

    #getter for: Lcom/google/android/finsky/layout/AutoUpdateSection;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/google/android/finsky/layout/AutoUpdateSection;->access$000(Lcom/google/android/finsky/layout/AutoUpdateSection;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/layout/AutoUpdateSection$1;->val$isAutoUpdateEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 136
    return-void
.end method
