.class public final enum Lcom/android/mms/ui/HtcListItemComposer$ListItemType;
.super Ljava/lang/Enum;
.source "HtcListItemComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/HtcListItemComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/ui/HtcListItemComposer$ListItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

.field public static final enum LISTITEM_CHECKBOX:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

.field public static final enum LISTITEM_IMAGEBUTTON:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

.field public static final enum LISTITEM_SIMPLE:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

.field public static final enum LISTITEM_STAMP:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

.field public static final enum LISTITEM_THREAD:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    new-instance v0, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    const-string v1, "LISTITEM_THREAD"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;->LISTITEM_THREAD:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    .line 164
    new-instance v0, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    const-string v1, "LISTITEM_STAMP"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;->LISTITEM_STAMP:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    .line 165
    new-instance v0, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    const-string v1, "LISTITEM_CHECKBOX"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;->LISTITEM_CHECKBOX:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    .line 166
    new-instance v0, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    const-string v1, "LISTITEM_SIMPLE"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;->LISTITEM_SIMPLE:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    .line 167
    new-instance v0, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    const-string v1, "LISTITEM_IMAGEBUTTON"

    invoke-direct {v0, v1, v6}, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;->LISTITEM_IMAGEBUTTON:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    .line 162
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    sget-object v1, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;->LISTITEM_THREAD:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;->LISTITEM_STAMP:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;->LISTITEM_CHECKBOX:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;->LISTITEM_SIMPLE:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;->LISTITEM_IMAGEBUTTON:Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;->$VALUES:[Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/ui/HtcListItemComposer$ListItemType;
    .locals 1
    .parameter "name"

    .prologue
    .line 162
    const-class v0, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/ui/HtcListItemComposer$ListItemType;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/android/mms/ui/HtcListItemComposer$ListItemType;->$VALUES:[Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    invoke-virtual {v0}, [Lcom/android/mms/ui/HtcListItemComposer$ListItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/ui/HtcListItemComposer$ListItemType;

    return-object v0
.end method
