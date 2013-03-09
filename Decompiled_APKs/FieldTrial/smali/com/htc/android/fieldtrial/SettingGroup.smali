.class public Lcom/htc/android/fieldtrial/SettingGroup;
.super Ljava/lang/Object;
.source "SettingGroup.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/android/fieldtrial/SettingGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56e9027b09f09b34L


# instance fields
.field private mItemBeginId:Ljava/lang/Integer;

.field private mName:Ljava/lang/String;

.field private mSettingItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/fieldtrial/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleIdString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "titleIdString"
    .parameter "titleString"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/fieldtrial/SettingGroup;->mTitleIdString:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/fieldtrial/SettingGroup;->mName:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/fieldtrial/SettingGroup;->mSettingItems:Ljava/util/List;

    .line 21
    iput-object p1, p0, Lcom/htc/android/fieldtrial/SettingGroup;->mTitleIdString:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/htc/android/fieldtrial/SettingGroup;->mName:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/android/fieldtrial/SettingGroup;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/htc/android/fieldtrial/SettingGroup;->getTitleIdString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/htc/android/fieldtrial/SettingGroup;->getTitleIdString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    check-cast p1, Lcom/htc/android/fieldtrial/SettingGroup;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/android/fieldtrial/SettingGroup;->compareTo(Lcom/htc/android/fieldtrial/SettingGroup;)I

    move-result v0

    return v0
.end method

.method public getItemBeginId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/htc/android/fieldtrial/SettingGroup;->mItemBeginId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/android/fieldtrial/SettingGroup;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/fieldtrial/SettingItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/android/fieldtrial/SettingGroup;->mSettingItems:Ljava/util/List;

    return-object v0
.end method

.method public getTitleIdString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/android/fieldtrial/SettingGroup;->mTitleIdString:Ljava/lang/String;

    return-object v0
.end method

.method public setItemBeginId(Ljava/lang/Integer;)V
    .locals 0
    .parameter "itemBeginId"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/android/fieldtrial/SettingGroup;->mItemBeginId:Ljava/lang/Integer;

    .line 31
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/htc/android/fieldtrial/SettingGroup;->mName:Ljava/lang/String;

    .line 47
    return-void
.end method
