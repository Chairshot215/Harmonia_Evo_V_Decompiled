.class Lcom/google/android/gm/LabelSettingsFragment$2;
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

.field final synthetic val$initialIndex:I

.field final synthetic val$item:Lcom/google/android/gm/LabelSettingsFragment$Pair;


# direct methods
.method constructor <init>(Lcom/google/android/gm/LabelSettingsFragment;Lcom/google/android/gm/LabelSettingsFragment$Pair;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/android/gm/LabelSettingsFragment$2;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    iput-object p2, p0, Lcom/google/android/gm/LabelSettingsFragment$2;->val$item:Lcom/google/android/gm/LabelSettingsFragment$Pair;

    iput p3, p0, Lcom/google/android/gm/LabelSettingsFragment$2;->val$initialIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/google/android/gm/LabelSettingsFragment$2;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    iget-object v1, p0, Lcom/google/android/gm/LabelSettingsFragment$2;->val$item:Lcom/google/android/gm/LabelSettingsFragment$Pair;

    iget-object v2, p0, Lcom/google/android/gm/LabelSettingsFragment$2;->this$0:Lcom/google/android/gm/LabelSettingsFragment;

    #getter for: Lcom/google/android/gm/LabelSettingsFragment;->mVibrateSettingValues:[Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/gm/LabelSettingsFragment;->access$100(Lcom/google/android/gm/LabelSettingsFragment;)[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gm/LabelSettingsFragment$2;->val$initialIndex:I

    aget-object v2, v2, v3

    #calls: Lcom/google/android/gm/LabelSettingsFragment;->saveVibrateSetting(Lcom/google/android/gm/LabelSettingsFragment$Pair;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/android/gm/LabelSettingsFragment;->access$200(Lcom/google/android/gm/LabelSettingsFragment;Lcom/google/android/gm/LabelSettingsFragment$Pair;Ljava/lang/String;)V

    .line 290
    return-void
.end method
