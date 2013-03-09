.class Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity$3;
.super Ljava/lang/Object;
.source "TalkBackPreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity$3;->this$0:Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 425
    instance-of v3, p1, Landroid/preference/ListPreference;

    if-eqz v3, :cond_0

    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 426
    check-cast v2, Landroid/preference/ListPreference;

    .line 427
    .local v2, listPreference:Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 428
    .local v1, index:I
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 430
    .local v0, entries:[Ljava/lang/CharSequence;
    if-ltz v1, :cond_1

    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 431
    aget-object v3, v0, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "%"

    const-string v5, "%%"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 437
    .end local v0           #entries:[Ljava/lang/CharSequence;
    .end local v1           #index:I
    .end local v2           #listPreference:Landroid/preference/ListPreference;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 433
    .restart local v0       #entries:[Ljava/lang/CharSequence;
    .restart local v1       #index:I
    .restart local v2       #listPreference:Landroid/preference/ListPreference;
    :cond_1
    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
