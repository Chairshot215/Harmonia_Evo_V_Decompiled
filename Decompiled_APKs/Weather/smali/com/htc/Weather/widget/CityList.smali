.class public Lcom/htc/Weather/widget/CityList;
.super Ljava/lang/Object;
.source "CityList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/Weather/widget/CityList$ListChangeListener;
    }
.end annotation


# instance fields
.field private mCityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/Weather/data/City;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/htc/Weather/widget/CityList$ListChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/Weather/widget/CityList;->mCityList:Ljava/util/ArrayList;

    .line 23
    iget-object v0, p0, Lcom/htc/Weather/widget/CityList;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 24
    iget-object v0, p0, Lcom/htc/Weather/widget/CityList;->mListener:Lcom/htc/Weather/widget/CityList$ListChangeListener;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/htc/Weather/widget/CityList;->mListener:Lcom/htc/Weather/widget/CityList$ListChangeListener;

    invoke-interface {v0}, Lcom/htc/Weather/widget/CityList$ListChangeListener;->onListChanged()V

    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/htc/Weather/data/City;)V
    .locals 1
    .parameter "city"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/Weather/widget/CityList;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/htc/Weather/widget/CityList;->mListener:Lcom/htc/Weather/widget/CityList$ListChangeListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/htc/Weather/widget/CityList;->mListener:Lcom/htc/Weather/widget/CityList$ListChangeListener;

    invoke-interface {v0}, Lcom/htc/Weather/widget/CityList$ListChangeListener;->onListChanged()V

    .line 54
    :cond_0
    return-void
.end method

.method public delete(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/Weather/widget/CityList;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/htc/Weather/widget/CityList;->mListener:Lcom/htc/Weather/widget/CityList$ListChangeListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/htc/Weather/widget/CityList;->mListener:Lcom/htc/Weather/widget/CityList$ListChangeListener;

    invoke-interface {v0}, Lcom/htc/Weather/widget/CityList$ListChangeListener;->onListChanged()V

    .line 47
    :cond_0
    return-void
.end method

.method public get(I)Lcom/htc/Weather/data/City;
    .locals 1
    .parameter "index"

    .prologue
    .line 37
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/Weather/widget/CityList;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/htc/Weather/widget/CityList;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/Weather/data/City;

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/Weather/widget/CityList;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    iget-object v0, p0, Lcom/htc/Weather/widget/CityList;->mListener:Lcom/htc/Weather/widget/CityList$ListChangeListener;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/htc/Weather/widget/CityList;->mListener:Lcom/htc/Weather/widget/CityList$ListChangeListener;

    invoke-interface {v0}, Lcom/htc/Weather/widget/CityList$ListChangeListener;->onListChanged()V

    .line 34
    :cond_0
    return-void
.end method

.method public setListChangedListener(Lcom/htc/Weather/widget/CityList$ListChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/Weather/widget/CityList;->mListener:Lcom/htc/Weather/widget/CityList$ListChangeListener;

    .line 62
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/Weather/widget/CityList;->mCityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
