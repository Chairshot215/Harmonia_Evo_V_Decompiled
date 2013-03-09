.class public Lcom/htc/home/personalize/storedatamanager/SetupItem;
.super Ljava/lang/Object;
.source "SetupItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/storedatamanager/SetupItem$SetupItemColumn;
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "setup_item"

.field public static final TAG:Ljava/lang/String; = "HomePersonalize SetupItem"


# instance fields
.field buyURI:Ljava/lang/String;

.field cacheExpireTTL:Ljava/lang/String;

.field categorylistURI:Ljava/lang/String;

.field friendFeedbackURI:Ljava/lang/String;

.field getmoreURI:Ljava/lang/String;

.field itemlistURI:Ljava/lang/String;

.field staticAssetCacheTTL:Ljava/lang/String;

.field ttl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ttl"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "categorylistURI"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "itemlistURI"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "buyURI"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "friendFeedbackURI"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "getmoreURI"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "staticAssetCacheTTL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cacheExpireTTL"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/home/personalize/storedatamanager/SetupItem;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static getCreateTableSQL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v0, sqlCreate:Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "setup_item"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "ttl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, "categorylistURI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, "itemlistURI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "buyURI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, "friendFeedbackURI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v1, "getmoreURI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, "staticAssetCacheTTL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, "cacheExpireTTL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT DEFAULT \'\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 19
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 20
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "ttl"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/SetupItem;->ttl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v1, "categorylistURI"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/SetupItem;->categorylistURI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v1, "itemlistURI"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/SetupItem;->itemlistURI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v1, "buyURI"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/SetupItem;->buyURI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v1, "friendFeedbackURI"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/SetupItem;->friendFeedbackURI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v1, "getmoreURI"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/SetupItem;->getmoreURI:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string v1, "staticAssetCacheTTL"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/SetupItem;->staticAssetCacheTTL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v1, "cacheExpireTTL"

    iget-object v2, p0, Lcom/htc/home/personalize/storedatamanager/SetupItem;->cacheExpireTTL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-object v0
.end method
