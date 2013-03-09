.class final enum Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;
.super Ljava/lang/Enum;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Shortcuts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum custom_columns:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum description:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum description_url:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum format:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum icon1:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum icon2:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum intent_action:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum intent_component:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum intent_data:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum intent_extradata:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum intent_query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum log_type:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum shortcut_id:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum source_version_code:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum spinner_while_refreshing:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

.field public static final enum title:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;


# instance fields
.field public final fullName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 802
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "intent_key"

    invoke-direct {v0, v1, v3}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    .line 803
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "source"

    invoke-direct {v0, v1, v4}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    .line 804
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "source_version_code"

    invoke-direct {v0, v1, v5}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source_version_code:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    .line 805
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "format"

    invoke-direct {v0, v1, v6}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->format:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    .line 806
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "title"

    invoke-direct {v0, v1, v7}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->title:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    .line 807
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "description"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->description:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    .line 808
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "description_url"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->description_url:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    .line 809
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "icon1"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->icon1:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    .line 810
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "icon2"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->icon2:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    .line 811
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "intent_action"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_action:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    .line 812
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "intent_component"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_component:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    .line 813
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "intent_data"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_data:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    .line 814
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "intent_query"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    .line 815
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "intent_extradata"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_extradata:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    .line 816
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "shortcut_id"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->shortcut_id:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    .line 817
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "spinner_while_refreshing"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->spinner_while_refreshing:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    .line 818
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "log_type"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->log_type:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    .line 819
    new-instance v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    const-string v1, "custom_columns"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->custom_columns:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    .line 801
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_key:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->source_version_code:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->format:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->title:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->description:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->description_url:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->icon1:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->icon2:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_action:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_component:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_data:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_query:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->intent_extradata:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->shortcut_id:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->spinner_while_refreshing:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->log_type:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->custom_columns:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->$VALUES:[Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

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
    .line 825
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shortcuts."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->fullName:Ljava/lang/String;

    .line 827
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;
    .locals 1
    .parameter

    .prologue
    .line 801
    const-class v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    return-object v0
.end method

.method public static values()[Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;
    .locals 1

    .prologue
    .line 801
    sget-object v0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->$VALUES:[Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    invoke-virtual {v0}, [Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$Shortcuts;

    return-object v0
.end method
