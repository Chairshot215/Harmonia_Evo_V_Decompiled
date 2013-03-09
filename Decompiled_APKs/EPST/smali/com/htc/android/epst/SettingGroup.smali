.class public Lcom/htc/android/epst/SettingGroup;
.super Ljava/lang/Object;
.source "SettingGroup.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x56e9027b09f09b34L


# instance fields
.field private mItemBeginId:Ljava/lang/Integer;

.field private mItemXML:Ljava/lang/String;

.field private mMode:I

.field private mName:Ljava/lang/String;

.field private mOperatorID:I

.field private mPreferenceID:Ljava/lang/String;

.field private mSettingItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/epst/SettingItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "titleString"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/SettingGroup;->mName:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/SettingGroup;->mPreferenceID:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/SettingGroup;->mItemXML:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/epst/SettingGroup;->mSettingItems:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lcom/htc/android/epst/SettingGroup;->mName:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public getItemBeginId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/htc/android/epst/SettingGroup;->mItemBeginId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getItemXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/android/epst/SettingGroup;->mItemXML:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/android/epst/SettingGroup;->mMode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/android/epst/SettingGroup;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorID()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/android/epst/SettingGroup;->mOperatorID:I

    return v0
.end method

.method public getPreferenceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/android/epst/SettingGroup;->mPreferenceID:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/epst/SettingItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/android/epst/SettingGroup;->mSettingItems:Ljava/util/List;

    return-object v0
.end method

.method public setItemBeginId(Ljava/lang/Integer;)V
    .locals 0
    .parameter "itemBeginId"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/htc/android/epst/SettingGroup;->mItemBeginId:Ljava/lang/Integer;

    .line 38
    return-void
.end method

.method public setItemXML(Ljava/lang/String;)V
    .locals 0
    .parameter "iXML"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/android/epst/SettingGroup;->mItemXML:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "iMode"

    .prologue
    .line 57
    iput p1, p0, Lcom/htc/android/epst/SettingGroup;->mMode:I

    .line 58
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/android/epst/SettingGroup;->mName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setOperatorID(I)V
    .locals 0
    .parameter "iOperatorID"

    .prologue
    .line 65
    iput p1, p0, Lcom/htc/android/epst/SettingGroup;->mOperatorID:I

    .line 66
    return-void
.end method

.method public setPreferenceID(Ljava/lang/String;)V
    .locals 0
    .parameter "iPreferenceID"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/android/epst/SettingGroup;->mPreferenceID:Ljava/lang/String;

    .line 82
    return-void
.end method
