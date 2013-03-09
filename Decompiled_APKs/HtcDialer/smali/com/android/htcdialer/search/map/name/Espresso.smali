.class public Lcom/android/htcdialer/search/map/name/Espresso;
.super Ljava/lang/Object;
.source "Espresso.java"


# static fields
.field public static final MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 10
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/htcdialer/search/map/name/Espresso;->MAP:Ljava/util/HashMap;

    .line 13
    const/4 v1, 0x0

    .line 14
    .local v1, secondKeyCode:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x1a

    if-ge v0, v2, :cond_1

    .line 15
    sget-object v2, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_MAP:Landroid/view/KeyCharacterMap;

    add-int/lit8 v3, v0, 0x1d

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    sget-object v2, Lcom/android/htcdialer/search/map/name/Espresso;->MAP:Ljava/util/HashMap;

    add-int/lit8 v3, v0, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [C

    const/4 v5, 0x0

    int-to-char v6, v1

    aput-char v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
