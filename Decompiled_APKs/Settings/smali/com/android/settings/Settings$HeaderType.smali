.class Lcom/android/settings/Settings$HeaderType;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderType"
.end annotation


# static fields
.field static final HEADER_TYPE_CATEGORY:I = 0x0

.field static final HEADER_TYPE_NORMAL:I = 0x1

.field static final HEADER_TYPE_SWITCH:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 950
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHeaderType(Lcom/htc/preference/HtcPreferenceActivity$Header;)I
    .locals 4
    .parameter "header"

    .prologue
    .line 956
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 957
    const/4 v0, 0x0

    .line 964
    :goto_0
    return v0

    .line 958
    :cond_0
    iget-wide v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080236

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080237

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080239

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/HtcAbsSettings;->isPluginSwitchPreference(Lcom/htc/preference/HtcPreferenceActivity$Header;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 962
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 964
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
