.class public Lcom/htc/util/weather/WeatherUtility$SearchCondition;
.super Ljava/lang/Object;
.source "WeatherUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/weather/WeatherUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchCondition"
.end annotation


# instance fields
.field private searchCharacters:Ljava/lang/String;

.field private searchColumn:Ljava/lang/String;

.field private searchType:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->searchCharacters:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->searchColumn:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->searchType:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    return-void
.end method


# virtual methods
.method public getSafeSearchCharacters()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->getSearchCharacters()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/htc/util/weather/WeatherUtility;->saftSearchCharacters(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/util/weather/WeatherUtility;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchCharacters()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->searchCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchColumn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->searchColumn:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchType()Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->searchType:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    return-object v0
.end method

.method public isPassSearchConditionCheck()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->searchCharacters:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->searchCharacters:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_0

    iget-object v2, p0, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->searchColumn:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->searchColumn:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_0

    iget-object v2, p0, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->searchType:Lcom/htc/util/weather/WeatherUtility$SEARCH_TYPE;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->searchColumn:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/util/weather/WeatherUtility$SearchCondition;->searchCharacters:Ljava/lang/String;

    #calls: Lcom/htc/util/weather/WeatherUtility;->isContainIllegalCharacters(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/htc/util/weather/WeatherUtility;->access$100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method
