.class public interface abstract Lcom/htc/android/epst/translator/Translator;
.super Ljava/lang/Object;
.source "Translator.java"


# static fields
.field public static final TYPE_FILE:I = 0x5

.field public static final TYPE_IP_ADDRESS:I = 0x7

.field public static final TYPE_NULL:I = 0x6

.field public static final TYPE_OPTION:I = 0x4

.field public static final TYPE_SID_NID:I = 0x8

.field public static final TYPE_STRING:I = 0x3


# virtual methods
.method public abstract getInputFilters()[Landroid/text/InputFilter;
.end method

.method public abstract getInputVerifier()Lcom/htc/android/epst/InputVerifier;
.end method

.method public abstract getTypedInfo()Ljava/util/List;
.end method

.method public abstract refreshGroupSettings()V
.end method

.method public abstract requestReadSettingValue(ILcom/htc/android/epst/SettingValueUpdater;)V
.end method

.method public abstract requestWriteSettingValue(Lcom/htc/android/epst/SettingItem;Lcom/htc/android/epst/SettingValueUpdater;)V
.end method

.method public abstract retrieveItemAndUpdate(II)V
.end method
