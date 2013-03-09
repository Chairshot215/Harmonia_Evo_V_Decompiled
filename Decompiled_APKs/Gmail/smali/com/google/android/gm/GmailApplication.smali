.class public Lcom/google/android/gm/GmailApplication;
.super Landroid/app/Application;
.source "GmailApplication.java"


# instance fields
.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gm/GmailApplication;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    const-string v0, "Gmail"

    const v1, 0x7f070001

    invoke-static {p0, v0, v2, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 36
    const-string v0, "Gmail"

    const v1, 0x7f070003

    invoke-static {p0, v0, v2, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 38
    const-string v0, "Gmail"

    const/high16 v1, 0x7f07

    invoke-static {p0, v0, v2, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 41
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "com.google.android.gmail.SuggestionProvider"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gm/GmailApplication;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    .line 43
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
