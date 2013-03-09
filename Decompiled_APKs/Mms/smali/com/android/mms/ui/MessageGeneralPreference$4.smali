.class Lcom/android/mms/ui/MessageGeneralPreference$4;
.super Ljava/lang/Object;
.source "MessageGeneralPreference.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageGeneralPreference;->initSignature()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageGeneralPreference;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageGeneralPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/mms/ui/MessageGeneralPreference$4;->this$0:Lcom/android/mms/ui/MessageGeneralPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "p"
    .parameter "newObjValue"

    .prologue
    const/4 v4, 0x1

    .line 379
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    .line 380
    .local v1, newValue:Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/android/mms/ui/MessageGeneralPreference$4;->this$0:Lcom/android/mms/ui/MessageGeneralPreference;

    const-string v3, "pref_key_signature_enabled"

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageGeneralPreference;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    .line 381
    .local v0, mSignaturePref:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 382
    const v2, 0x7f090330

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 385
    :goto_0
    return v4

    .line 384
    :cond_0
    const v2, 0x7f090331

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_0
.end method
