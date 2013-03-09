.class final enum Lcom/android/browser/BookmarkUtils$BookmarkIconType;
.super Ljava/lang/Enum;
.source "BookmarkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BookmarkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BookmarkIconType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/browser/BookmarkUtils$BookmarkIconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/browser/BookmarkUtils$BookmarkIconType;

.field public static final enum ICON_HOME_SHORTCUT:Lcom/android/browser/BookmarkUtils$BookmarkIconType;

.field public static final enum ICON_INSTALLABLE_WEB_APP:Lcom/android/browser/BookmarkUtils$BookmarkIconType;

.field public static final enum ICON_WIDGET:Lcom/android/browser/BookmarkUtils$BookmarkIconType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    const-string v1, "ICON_INSTALLABLE_WEB_APP"

    invoke-direct {v0, v1, v2}, Lcom/android/browser/BookmarkUtils$BookmarkIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/BookmarkUtils$BookmarkIconType;->ICON_INSTALLABLE_WEB_APP:Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    .line 52
    new-instance v0, Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    const-string v1, "ICON_HOME_SHORTCUT"

    invoke-direct {v0, v1, v3}, Lcom/android/browser/BookmarkUtils$BookmarkIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/BookmarkUtils$BookmarkIconType;->ICON_HOME_SHORTCUT:Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    .line 53
    new-instance v0, Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    const-string v1, "ICON_WIDGET"

    invoke-direct {v0, v1, v4}, Lcom/android/browser/BookmarkUtils$BookmarkIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/BookmarkUtils$BookmarkIconType;->ICON_WIDGET:Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    sget-object v1, Lcom/android/browser/BookmarkUtils$BookmarkIconType;->ICON_INSTALLABLE_WEB_APP:Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/browser/BookmarkUtils$BookmarkIconType;->ICON_HOME_SHORTCUT:Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/browser/BookmarkUtils$BookmarkIconType;->ICON_WIDGET:Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/browser/BookmarkUtils$BookmarkIconType;->$VALUES:[Lcom/android/browser/BookmarkUtils$BookmarkIconType;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/browser/BookmarkUtils$BookmarkIconType;
    .locals 1
    .parameter "name"

    .prologue
    .line 50
    const-class v0, Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    return-object v0
.end method

.method public static values()[Lcom/android/browser/BookmarkUtils$BookmarkIconType;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/browser/BookmarkUtils$BookmarkIconType;->$VALUES:[Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    invoke-virtual {v0}, [Lcom/android/browser/BookmarkUtils$BookmarkIconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/browser/BookmarkUtils$BookmarkIconType;

    return-object v0
.end method
