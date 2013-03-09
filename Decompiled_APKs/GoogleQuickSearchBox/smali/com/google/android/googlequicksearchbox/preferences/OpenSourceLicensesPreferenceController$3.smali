.class Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$3;
.super Ljava/lang/Object;
.source "OpenSourceLicensesPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->showPageOfText(Ljava/lang/String;)V
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
    .line 141
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$3;->this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController$3;->this$0:Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->mShowingOpenSourceLicences:Z
    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;->access$302(Lcom/google/android/googlequicksearchbox/preferences/OpenSourceLicensesPreferenceController;Z)Z

    .line 145
    return-void
.end method
