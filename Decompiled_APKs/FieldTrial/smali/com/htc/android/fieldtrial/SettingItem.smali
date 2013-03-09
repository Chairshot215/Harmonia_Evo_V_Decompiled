.class public Lcom/htc/android/fieldtrial/SettingItem;
.super Ljava/lang/Object;
.source "SettingItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x19bdf7a1618dab50L


# instance fields
.field private mId:I

.field private mName:Ljava/lang/String;

.field private mStatus:I

.field private mTranslator:Lcom/htc/android/fieldtrial/translator/Translator;

.field private mTranslatorClassName:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/fieldtrial/SettingItem;->mStatus:I

    .line 25
    iput-object p1, p0, Lcom/htc/android/fieldtrial/SettingItem;->mName:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/htc/android/fieldtrial/SettingItem;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/android/fieldtrial/SettingItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/htc/android/fieldtrial/SettingItem;->mStatus:I

    return v0
.end method

.method public getTranslator()Lcom/htc/android/fieldtrial/translator/Translator;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/android/fieldtrial/SettingItem;->mTranslator:Lcom/htc/android/fieldtrial/translator/Translator;

    return-object v0
.end method

.method public getTranslatorClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/android/fieldtrial/SettingItem;->mTranslatorClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/android/fieldtrial/SettingItem;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 46
    iput p1, p0, Lcom/htc/android/fieldtrial/SettingItem;->mId:I

    .line 47
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/htc/android/fieldtrial/SettingItem;->mName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 67
    iput p1, p0, Lcom/htc/android/fieldtrial/SettingItem;->mStatus:I

    .line 68
    return-void
.end method

.method public setTranslator(Lcom/htc/android/fieldtrial/translator/Translator;)V
    .locals 0
    .parameter "translator"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/htc/android/fieldtrial/SettingItem;->mTranslator:Lcom/htc/android/fieldtrial/translator/Translator;

    .line 40
    return-void
.end method

.method public setTranslatorClassName(Ljava/lang/String;)V
    .locals 0
    .parameter "translatorClassName"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/htc/android/fieldtrial/SettingItem;->mTranslatorClassName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/android/fieldtrial/SettingItem;->mValue:Ljava/lang/String;

    .line 61
    return-void
.end method
