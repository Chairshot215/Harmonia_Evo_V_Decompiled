.class Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$1;
.super Ljava/lang/Object;
.source "OpenSourceLicensesPreferenceController.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->handlePreference(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$1;->this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$1;->this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;

    #calls: Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->showOpenSourceLicenses()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->access$000(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;)V

    .line 66
    const/4 v0, 0x1

    return v0
.end method
