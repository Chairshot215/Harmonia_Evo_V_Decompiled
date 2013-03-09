.class public Lcom/android/htcdialer/search/map/number/ChaCha;
.super Ljava/lang/Object;
.source "ChaCha.java"


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
    .locals 10

    .prologue
    const/16 v9, 0x37

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/android/htcdialer/search/map/number/ChaCha;->MAP:Ljava/util/HashMap;

    .line 14
    const/4 v1, 0x0

    .line 15
    .local v1, secondKeyCode:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x1a

    if-ge v0, v2, :cond_1

    .line 16
    sget-object v2, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_MAP:Landroid/view/KeyCharacterMap;

    add-int/lit8 v3, v0, 0x1d

    invoke-virtual {v2, v3, v8}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v1

    .line 17
    if-eqz v1, :cond_0

    int-to-char v2, v1

    invoke-static {v2}, Lcom/android/htcdialer/search/map/NumberMap;->isNumberKeyCode(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    sget-object v2, Lcom/android/htcdialer/search/map/number/ChaCha;->MAP:Ljava/util/HashMap;

    add-int/lit8 v3, v0, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v7, [C

    int-to-char v5, v1

    aput-char v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_1
    sget-object v2, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_MAP:Landroid/view/KeyCharacterMap;

    const/16 v3, 0xd8

    invoke-virtual {v2, v3, v8}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v1

    .line 24
    if-eqz v1, :cond_2

    int-to-char v2, v1

    invoke-static {v2}, Lcom/android/htcdialer/search/map/NumberMap;->isNumberKeyCode(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 25
    sget-object v2, Lcom/android/htcdialer/search/map/number/ChaCha;->MAP:Ljava/util/HashMap;

    const/16 v3, 0x3a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v7, [C

    int-to-char v5, v1

    aput-char v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_2
    sget-object v2, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_MAP:Landroid/view/KeyCharacterMap;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3, v8}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v1

    .line 30
    if-eqz v1, :cond_3

    int-to-char v2, v1

    invoke-static {v2}, Lcom/android/htcdialer/search/map/NumberMap;->isNumberKeyCode(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 31
    sget-object v2, Lcom/android/htcdialer/search/map/number/ChaCha;->MAP:Ljava/util/HashMap;

    const/16 v3, 0x38

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v7, [C

    int-to-char v5, v1

    aput-char v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_3
    sget-object v2, Lcom/android/htcdialer/search/map/KeyMap;->HW_KEY_MAP:Landroid/view/KeyCharacterMap;

    invoke-virtual {v2, v9, v8}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result v1

    .line 36
    if-eqz v1, :cond_4

    int-to-char v2, v1

    invoke-static {v2}, Lcom/android/htcdialer/search/map/NumberMap;->isNumberKeyCode(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 37
    sget-object v2, Lcom/android/htcdialer/search/map/number/ChaCha;->MAP:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v7, [C

    int-to-char v5, v1

    aput-char v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
