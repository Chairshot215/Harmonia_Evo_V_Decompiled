.class public final Lcom/htc/sdcardwizard/handler/SDCardItems;
.super Ljava/util/ArrayList;
.source "SDCardItems.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/htc/sdcardwizard/handler/SDCardItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xa065e10ce40d39L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public getCheckState()Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;
    .locals 5

    .prologue
    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, checkCount:I
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/SDCardItems;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sdcardwizard/handler/SDCardItem;

    .line 23
    .local v2, item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    invoke-virtual {v2}, Lcom/htc/sdcardwizard/handler/SDCardItem;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    .end local v2           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    :cond_1
    sget-object v3, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;->ANY:Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    .line 29
    .local v3, result:Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/SDCardItems;->size()I

    move-result v4

    if-ne v0, v4, :cond_3

    .line 30
    sget-object v3, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;->ALL:Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    .line 35
    :cond_2
    :goto_1
    return-object v3

    .line 32
    :cond_3
    if-nez v0, :cond_2

    .line 33
    sget-object v3, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;->NO_ONE:Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/SDCardItems;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sdcardwizard/handler/SDCardItem;

    .line 16
    .local v1, item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    invoke-virtual {v1, p1}, Lcom/htc/sdcardwizard/handler/SDCardItem;->setChecked(Z)V

    goto :goto_0

    .line 18
    .end local v1           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    :cond_0
    return-void
.end method
