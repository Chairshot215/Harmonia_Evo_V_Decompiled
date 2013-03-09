.class Lcom/google/android/tts/GeneralSettingsFragment$1;
.super Ljava/lang/Object;
.source "GeneralSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/tts/GeneralSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/tts/GeneralSettingsFragment;


# direct methods
.method constructor <init>(Lcom/google/android/tts/GeneralSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/tts/GeneralSettingsFragment$1;->this$0:Lcom/google/android/tts/GeneralSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/tts/GeneralSettingsFragment$1;->this$0:Lcom/google/android/tts/GeneralSettingsFragment;

    #calls: Lcom/google/android/tts/GeneralSettingsFragment;->showOpenSourceLicenses()V
    invoke-static {v0}, Lcom/google/android/tts/GeneralSettingsFragment;->access$000(Lcom/google/android/tts/GeneralSettingsFragment;)V

    .line 47
    const/4 v0, 0x1

    return v0
.end method
