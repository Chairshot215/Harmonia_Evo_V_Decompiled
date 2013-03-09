.class Lcom/htc/preference/HtcGenericInflater$FactoryMerger;
.super Ljava/lang/Object;
.source "HtcGenericInflater.java"

# interfaces
.implements Lcom/htc/preference/HtcGenericInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcGenericInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FactoryMerger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/preference/HtcGenericInflater$Factory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mF1:Lcom/htc/preference/HtcGenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/preference/HtcGenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mF2:Lcom/htc/preference/HtcGenericInflater$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/preference/HtcGenericInflater$Factory",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/preference/HtcGenericInflater$Factory;Lcom/htc/preference/HtcGenericInflater$Factory;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcGenericInflater$Factory",
            "<TT;>;",
            "Lcom/htc/preference/HtcGenericInflater$Factory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Lcom/htc/preference/HtcGenericInflater$FactoryMerger;,"Lcom/htc/preference/HtcGenericInflater$FactoryMerger<TT;>;"
    .local p1, f1:Lcom/htc/preference/HtcGenericInflater$Factory;,"Lcom/htc/preference/HtcGenericInflater$Factory<TT;>;"
    .local p2, f2:Lcom/htc/preference/HtcGenericInflater$Factory;,"Lcom/htc/preference/HtcGenericInflater$Factory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/htc/preference/HtcGenericInflater$FactoryMerger;->mF1:Lcom/htc/preference/HtcGenericInflater$Factory;

    .line 89
    iput-object p2, p0, Lcom/htc/preference/HtcGenericInflater$FactoryMerger;->mF2:Lcom/htc/preference/HtcGenericInflater$Factory;

    .line 90
    return-void
.end method


# virtual methods
.method public onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 2
    .parameter "name"
    .parameter "context"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, this:Lcom/htc/preference/HtcGenericInflater$FactoryMerger;,"Lcom/htc/preference/HtcGenericInflater$FactoryMerger<TT;>;"
    iget-object v1, p0, Lcom/htc/preference/HtcGenericInflater$FactoryMerger;->mF1:Lcom/htc/preference/HtcGenericInflater$Factory;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/preference/HtcGenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, v:Ljava/lang/Object;,"TT;"
    if-eqz v0, :cond_0

    .line 95
    .end local v0           #v:Ljava/lang/Object;,"TT;"
    :goto_0
    return-object v0

    .restart local v0       #v:Ljava/lang/Object;,"TT;"
    :cond_0
    iget-object v1, p0, Lcom/htc/preference/HtcGenericInflater$FactoryMerger;->mF2:Lcom/htc/preference/HtcGenericInflater$Factory;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/preference/HtcGenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
