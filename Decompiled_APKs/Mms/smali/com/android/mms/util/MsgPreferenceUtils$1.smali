.class final Lcom/android/mms/util/MsgPreferenceUtils$1;
.super Ljava/lang/Object;
.source "MsgPreferenceUtils.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/MsgPreferenceUtils;->updateAttachmentStorageSetting(Ljava/lang/String;Lcom/htc/preference/HtcPreferenceManager;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "p"
    .parameter "newObjValue"

    .prologue
    .line 123
    new-instance v1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .local v1, i:Ljava/lang/Integer;
    move-object v2, p1

    .line 124
    check-cast v2, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcListPreference;->setValueIndex(I)V

    move-object v2, p1

    .line 125
    check-cast v2, Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v2}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 126
    .local v0, enties:[Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    const/4 v2, 0x1

    return v2
.end method
