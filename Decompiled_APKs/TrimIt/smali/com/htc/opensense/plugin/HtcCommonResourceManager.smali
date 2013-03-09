.class public final Lcom/htc/opensense/plugin/HtcCommonResourceManager;
.super Ljava/lang/Object;
.source "HtcCommonResourceManager.java"


# static fields
.field public static final COMMON_COMMAND_BAR:I = 0x7d3

.field public static final COMMON_LIST_ITEM:I = 0x7d1

.field public static final COMMON_TITLE:I = 0x7d2

.field public static final INVALID_LIST_ITEM_LAYOUT:I = -0x1

.field private static final SUPPORTED_COMMAND_BAR_LAYOUTS:[I

.field private static final SUPPORTED_LIST_ITEM_LAYOUTS:[I

.field private static final SUPPORTED_TITLE_LAYOUTS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    const/16 v0, 0x38

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->SUPPORTED_LIST_ITEM_LAYOUTS:[I

    .line 71
    new-array v0, v1, [I

    sput-object v0, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->SUPPORTED_TITLE_LAYOUTS:[I

    .line 72
    new-array v0, v1, [I

    sput-object v0, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->SUPPORTED_COMMAND_BAR_LAYOUTS:[I

    return-void

    .line 13
    nop

    :array_0
    .array-data 0x4
        0xdt 0x0t 0x9t 0x1t
        0x3t 0x0t 0x9t 0x1t
        0x4t 0x0t 0x9t 0x1t
        0xft 0x0t 0x9t 0x1t
        0x6t 0x0t 0x9t 0x1t
        0x7t 0x0t 0x9t 0x1t
        0x7t 0x0t 0x9t 0x2t
        0x46t 0x0t 0x9t 0x2t
        0x48t 0x0t 0x9t 0x2t
        0x49t 0x0t 0x9t 0x2t
        0x4at 0x0t 0x9t 0x2t
        0x8t 0x0t 0x9t 0x2t
        0x4dt 0x0t 0x9t 0x2t
        0x4ft 0x0t 0x9t 0x2t
        0x54t 0x0t 0x9t 0x2t
        0x9t 0x0t 0x9t 0x2t
        0x55t 0x0t 0x9t 0x2t
        0x56t 0x0t 0x9t 0x2t
        0x57t 0x0t 0x9t 0x2t
        0x5dt 0x0t 0x9t 0x2t
        0x5ft 0x0t 0x9t 0x2t
        0x60t 0x0t 0x9t 0x2t
        0x62t 0x0t 0x9t 0x2t
        0x25t 0x0t 0x9t 0x2t
        0xat 0x0t 0x9t 0x2t
        0x64t 0x0t 0x9t 0x2t
        0x6at 0x0t 0x9t 0x2t
        0x6bt 0x0t 0x9t 0x2t
        0xbt 0x0t 0x9t 0x2t
        0x6ft 0x0t 0x9t 0x2t
        0xct 0x0t 0x9t 0x2t
        0x70t 0x0t 0x9t 0x2t
        0x71t 0x0t 0x9t 0x2t
        0x74t 0x0t 0x9t 0x2t
        0x76t 0x0t 0x9t 0x2t
        0x77t 0x0t 0x9t 0x2t
        0x78t 0x0t 0x9t 0x2t
        0x7at 0x0t 0x9t 0x2t
        0xdt 0x0t 0x9t 0x2t
        0x82t 0x0t 0x9t 0x2t
        0x83t 0x0t 0x9t 0x2t
        0x84t 0x0t 0x9t 0x2t
        0x86t 0x0t 0x9t 0x2t
        0x88t 0x0t 0x9t 0x2t
        0x1dt 0x0t 0x9t 0x2t
        0x81t 0x0t 0x9t 0x2t
        0x7bt 0x0t 0x9t 0x2t
        0x8at 0x0t 0x9t 0x2t
        0x24t 0x0t 0x9t 0x2t
        0x89t 0x0t 0x9t 0x2t
        0x7ct 0x0t 0x9t 0x2t
        0x7dt 0x0t 0x9t 0x2t
        0x5bt 0x0t 0x9t 0x2t
        0x26t 0x0t 0x9t 0x2t
        0x63t 0x0t 0x9t 0x2t
        0x45t 0x0t 0x9t 0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getListItemLayoutCount()I
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->SUPPORTED_LIST_ITEM_LAYOUTS:[I

    array-length v0, v0

    return v0
.end method

.method public static final getListItemLayouts()[I
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->SUPPORTED_LIST_ITEM_LAYOUTS:[I

    return-object v0
.end method

.method public static final isSupported(I)Z
    .locals 5
    .parameter "layout_id"

    .prologue
    .line 79
    sget-object v0, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->SUPPORTED_LIST_ITEM_LAYOUTS:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 80
    .local v2, layout:I
    if-ne v2, p0, :cond_0

    .line 81
    const/4 v4, 0x1

    .line 84
    .end local v2           #layout:I
    :goto_1
    return v4

    .line 79
    .restart local v2       #layout:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v2           #layout:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static final isSupported(II)Z
    .locals 6
    .parameter "type"
    .parameter "layout_id"

    .prologue
    const/4 v5, 0x0

    .line 89
    packed-switch p0, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    return v5

    .line 91
    :pswitch_0
    sget-object v3, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->SUPPORTED_LIST_ITEM_LAYOUTS:[I

    .line 102
    .local v3, layout_ids:[I
    :goto_1
    move-object v0, v3

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v4, :cond_0

    aget v2, v0, v1

    .line 103
    .local v2, layout:I
    if-ne v2, p1, :cond_1

    .line 104
    const/4 v5, 0x1

    goto :goto_0

    .line 94
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #layout:I
    .end local v3           #layout_ids:[I
    .end local v4           #len$:I
    :pswitch_1
    sget-object v3, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->SUPPORTED_TITLE_LAYOUTS:[I

    .line 95
    .restart local v3       #layout_ids:[I
    goto :goto_1

    .line 97
    .end local v3           #layout_ids:[I
    :pswitch_2
    sget-object v3, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->SUPPORTED_COMMAND_BAR_LAYOUTS:[I

    .line 98
    .restart local v3       #layout_ids:[I
    goto :goto_1

    .line 102
    .restart local v0       #arr$:[I
    .restart local v1       #i$:I
    .restart local v2       #layout:I
    .restart local v4       #len$:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
