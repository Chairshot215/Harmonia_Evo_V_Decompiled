.class public final enum Lcom/android/mailcommon/WebViewContextMenu$MenuType;
.super Ljava/lang/Enum;
.source "WebViewContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mailcommon/WebViewContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "MenuType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mailcommon/WebViewContextMenu$MenuType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mailcommon/WebViewContextMenu$MenuType;

.field public static final enum ADD_CONTACT_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

.field public static final enum COPY_GEO_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

.field public static final enum COPY_LINK_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

.field public static final enum COPY_MAIL_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

.field public static final enum COPY_PHONE_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

.field public static final enum DIAL_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

.field public static final enum EMAIL_CONTACT_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

.field public static final enum MAP_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

.field public static final enum OPEN_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

.field public static final enum SHARE_LINK_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

.field public static final enum SMS_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    const-string v1, "OPEN_MENU"

    invoke-direct {v0, v1, v3}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->OPEN_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    .line 63
    new-instance v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    const-string v1, "COPY_LINK_MENU"

    invoke-direct {v0, v1, v4}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->COPY_LINK_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    .line 64
    new-instance v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    const-string v1, "SHARE_LINK_MENU"

    invoke-direct {v0, v1, v5}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->SHARE_LINK_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    .line 65
    new-instance v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    const-string v1, "DIAL_MENU"

    invoke-direct {v0, v1, v6}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->DIAL_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    .line 66
    new-instance v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    const-string v1, "SMS_MENU"

    invoke-direct {v0, v1, v7}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->SMS_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    .line 67
    new-instance v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    const-string v1, "ADD_CONTACT_MENU"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->ADD_CONTACT_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    .line 68
    new-instance v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    const-string v1, "COPY_PHONE_MENU"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->COPY_PHONE_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    .line 69
    new-instance v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    const-string v1, "EMAIL_CONTACT_MENU"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->EMAIL_CONTACT_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    .line 70
    new-instance v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    const-string v1, "COPY_MAIL_MENU"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->COPY_MAIL_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    .line 71
    new-instance v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    const-string v1, "MAP_MENU"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->MAP_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    .line 72
    new-instance v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    const-string v1, "COPY_GEO_MENU"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/mailcommon/WebViewContextMenu$MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->COPY_GEO_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    .line 61
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->OPEN_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->COPY_LINK_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->SHARE_LINK_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->DIAL_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->SMS_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->ADD_CONTACT_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->COPY_PHONE_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->EMAIL_CONTACT_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->COPY_MAIL_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->MAP_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->COPY_GEO_MENU:Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->$VALUES:[Lcom/android/mailcommon/WebViewContextMenu$MenuType;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mailcommon/WebViewContextMenu$MenuType;
    .locals 1
    .parameter

    .prologue
    .line 61
    const-class v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    return-object v0
.end method

.method public static values()[Lcom/android/mailcommon/WebViewContextMenu$MenuType;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/mailcommon/WebViewContextMenu$MenuType;->$VALUES:[Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    invoke-virtual {v0}, [Lcom/android/mailcommon/WebViewContextMenu$MenuType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mailcommon/WebViewContextMenu$MenuType;

    return-object v0
.end method
