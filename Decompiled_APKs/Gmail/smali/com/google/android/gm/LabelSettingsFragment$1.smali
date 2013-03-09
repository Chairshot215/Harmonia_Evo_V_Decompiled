.class Lcom/google/android/gm/LabelSettingsFragment$1;
.super Ljava/lang/Object;
.source "LabelSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/LabelSettingsFragment;->showVibrateSettingsDialog(Lcom/google/android/gm/LabelSettingsFragment$Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/LabelSettingsFragment;

.field final synthetic val$item:Lcom/google/android/gm/LabelSettingsFragment$Pair;


# direct methods
.method constructor <init>(Lcom/google/android/gm/LabelSettingsFragment;Lcom/google/android/gm/LabelSettingsFragment$Pair;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/android/gm/LabelSettingsFragment$1;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    iput-object p2, p0, Lcom/google/android/gm/LabelSettingsFragment$1;->val$item:Lcom/google/android/gm/LabelSettingsFragment$Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichItem"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/gm/LabelSettingsFragment$1;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment$1;->val$item:Lcom/google/android/gm/LabelSettingsFragment$Pair;

    iget-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment$1;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mVibrateSettingValues:[Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/gm/LabelSettingsFragment;->access$100(Lcom/google/android/gm/LabelSettingsFragment;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p2

    #calls: Lcom/google/android/gm/LabelSettingsFragment;->saveVibrateSetting(Lcom/google/android/gm/LabelSettingsFragment$Pair;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/gm/LabelSettingsFragment;->access$200(Lcom/google/android/gm/LabelSettingsFragment;Lcom/google/android/gm/LabelSettingsFragment$Pair;Ljava/lang/String;)V

    .line 280
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 281
    return-void
.end method
