.class Lcom/htc/provider/weather/WeatherProviderLocationListHelper$DatabaseKiller;
.super Ljava/lang/Thread;
.source "WeatherProviderLocationListHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/weather/WeatherProviderLocationListHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseKiller"
.end annotation


# instance fields
.field private currentDbFilename:Ljava/lang/String;

.field private enDbFilename:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/provider/weather/WeatherProviderLocationListHelper;


# direct methods
.method public constructor <init>(Lcom/htc/provider/weather/WeatherProviderLocationListHelper;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "currentDbFilename"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/htc/provider/weather/WeatherProviderLocationListHelper$DatabaseKiller;->this$0:Lcom/htc/provider/weather/WeatherProviderLocationListHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 143
    const-string v0, "0409WWE"

    #calls: Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->getDbFilename(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/provider/weather/WeatherProviderLocationListHelper$DatabaseKiller;->enDbFilename:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/htc/provider/weather/WeatherProviderLocationListHelper$DatabaseKiller;->currentDbFilename:Ljava/lang/String;

    .line 148
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 151
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/htc/provider/weather/WeatherProviderLocationListHelper;->access$100()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v3, folder:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 153
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, filename:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/provider/weather/WeatherProviderLocationListHelper$DatabaseKiller;->enDbFilename:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/provider/weather/WeatherProviderLocationListHelper$DatabaseKiller;->currentDbFilename:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 152
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 162
    .end local v1           #f:Ljava/io/File;
    .end local v2           #filename:Ljava/lang/String;
    :cond_2
    return-void
.end method
