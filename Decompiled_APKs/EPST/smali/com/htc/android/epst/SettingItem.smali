.class public Lcom/htc/android/epst/SettingItem;
.super Ljava/lang/Object;
.source "SettingItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3b1af27f3bbb0fb7L


# instance fields
.field private mId:I

.field private mIsEditable:Z

.field private mMode:I

.field private mName:Ljava/lang/String;

.field private mOperatorID:I

.field private mStatus:I

.field private mTranslator:Lcom/htc/android/epst/translator/Translator;

.field private mTranslatorClassName:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/epst/SettingItem;->mStatus:I

    .line 79
    iput-object p1, p0, Lcom/htc/android/epst/SettingItem;->mName:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/android/epst/SettingItem;->mId:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/htc/android/epst/SettingItem;->mMode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/epst/SettingItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorID()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/htc/android/epst/SettingItem;->mOperatorID:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/android/epst/SettingItem;->mStatus:I

    return v0
.end method

.method public getTranslator()Lcom/htc/android/epst/translator/Translator;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/android/epst/SettingItem;->mTranslator:Lcom/htc/android/epst/translator/Translator;

    return-object v0
.end method

.method public getTranslatorClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/android/epst/SettingItem;->mTranslatorClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/android/epst/SettingItem;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/htc/android/epst/SettingItem;->mIsEditable:Z

    return v0
.end method

.method public setEditable(Z)V
    .locals 0
    .parameter "isEditable"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/htc/android/epst/SettingItem;->mIsEditable:Z

    .line 76
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 47
    iput p1, p0, Lcom/htc/android/epst/SettingItem;->mId:I

    .line 48
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "iMode"

    .prologue
    .line 87
    iput p1, p0, Lcom/htc/android/epst/SettingItem;->mMode:I

    .line 88
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/android/epst/SettingItem;->mName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setOperatorID(I)V
    .locals 0
    .parameter "iID"

    .prologue
    .line 96
    iput p1, p0, Lcom/htc/android/epst/SettingItem;->mOperatorID:I

    .line 97
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/android/epst/SettingItem;->mStatus:I

    .line 69
    return-void
.end method

.method public setTranslator(Lcom/htc/android/epst/translator/Translator;)V
    .locals 0
    .parameter "translator"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/android/epst/SettingItem;->mTranslator:Lcom/htc/android/epst/translator/Translator;

    .line 41
    return-void
.end method

.method public setTranslatorClassName(Ljava/lang/String;)V
    .locals 0
    .parameter "translatorClassName"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/htc/android/epst/SettingItem;->mTranslatorClassName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/android/epst/SettingItem;->mValue:Ljava/lang/String;

    .line 62
    return-void
.end method
