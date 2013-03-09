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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcGenericInflater$Factory",
            "<TT;>;",
            "Lcom/htc/preference/HtcGenericInflater$Factory",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/preference/HtcGenericInflater$FactoryMerger;->mF1:Lcom/htc/preference/HtcGenericInflater$Factory;

    iput-object p2, p0, Lcom/htc/preference/HtcGenericInflater$FactoryMerger;->mF2:Lcom/htc/preference/HtcGenericInflater$Factory;

    return-void
.end method


# virtual methods
.method public onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation

    iget-object v1, p0, Lcom/htc/preference/HtcGenericInflater$FactoryMerger;->mF1:Lcom/htc/preference/HtcGenericInflater$Factory;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/preference/HtcGenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/htc/preference/HtcGenericInflater$FactoryMerger;->mF2:Lcom/htc/preference/HtcGenericInflater$Factory;

    invoke-interface {v1, p1, p2, p3}, Lcom/htc/preference/HtcGenericInflater$Factory;->onCreateItem(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
