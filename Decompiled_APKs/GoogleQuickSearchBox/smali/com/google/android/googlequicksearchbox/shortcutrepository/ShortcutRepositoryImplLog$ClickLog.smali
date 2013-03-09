.class final enum Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;
.super Ljava/lang/Enum;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ClickLog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

.field static final COLUMNS:[Ljava/lang/String;

.field public static final enum _id:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

.field public static final enum hit_time:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

.field public static final enum intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

.field public static final enum query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

.field public static final enum source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;


# instance fields
.field public final fullName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 834
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    const-string v1, "_id"

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->_id:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    .line 835
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    const-string v1, "intent_key"

    invoke-direct {v0, v1, v3}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    .line 836
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    const-string v1, "query"

    invoke-direct {v0, v1, v4}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    .line 837
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    const-string v1, "hit_time"

    invoke-direct {v0, v1, v5}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    .line 838
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    const-string v1, "source"

    invoke-direct {v0, v1, v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    .line 833
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->_id:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->hit_time:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->$VALUES:[Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    .line 840
    invoke-static {}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->initColumns()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 855
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clicklog."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    .line 857
    return-void
.end method

.method private static initColumns()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 845
    invoke-static {}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->values()[Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    move-result-object v2

    .line 846
    .local v2, vals:[Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;
    array-length v3, v2

    new-array v0, v3, [Ljava/lang/String;

    .line 847
    .local v0, columns:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 848
    aget-object v3, v2, v1

    iget-object v3, v3, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->fullName:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 847
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 850
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;
    .locals 1
    .parameter

    .prologue
    .line 833
    const-class v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    return-object v0
.end method

.method public static values()[Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;
    .locals 1

    .prologue
    .line 833
    sget-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->$VALUES:[Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    invoke-virtual {v0}, [Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$ClickLog;

    return-object v0
.end method
