.class final enum Lcom/android/camera/IntentRequestName;
.super Ljava/lang/Enum;
.source "IntentRequestName.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/IntentRequestName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/IntentRequestName;

.field public static final enum Album:Lcom/android/camera/IntentRequestName;

.field public static final enum Contacts:Lcom/android/camera/IntentRequestName;

.field public static final enum Mail:Lcom/android/camera/IntentRequestName;

.field public static final enum Main:Lcom/android/camera/IntentRequestName;

.field public static final enum Mms:Lcom/android/camera/IntentRequestName;

.field public static final enum Notes:Lcom/android/camera/IntentRequestName;

.field public static final enum Square:Lcom/android/camera/IntentRequestName;

.field public static final enum Unknown:Lcom/android/camera/IntentRequestName;

.field private static final mNameTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/camera/IntentRequestName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/camera/IntentRequestName;

    const-string v1, "Album"

    const-string v2, "album"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/camera/IntentRequestName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/IntentRequestName;->Album:Lcom/android/camera/IntentRequestName;

    new-instance v0, Lcom/android/camera/IntentRequestName;

    const-string v1, "Contacts"

    const-string v2, "contacts"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/camera/IntentRequestName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/IntentRequestName;->Contacts:Lcom/android/camera/IntentRequestName;

    new-instance v0, Lcom/android/camera/IntentRequestName;

    const-string v1, "Mail"

    const-string v2, "mail"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/camera/IntentRequestName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/IntentRequestName;->Mail:Lcom/android/camera/IntentRequestName;

    new-instance v0, Lcom/android/camera/IntentRequestName;

    const-string v1, "Main"

    const-string v2, "main"

    invoke-direct {v0, v1, v7, v2}, Lcom/android/camera/IntentRequestName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/IntentRequestName;->Main:Lcom/android/camera/IntentRequestName;

    new-instance v0, Lcom/android/camera/IntentRequestName;

    const-string v1, "Mms"

    const-string v2, "mms"

    invoke-direct {v0, v1, v8, v2}, Lcom/android/camera/IntentRequestName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/IntentRequestName;->Mms:Lcom/android/camera/IntentRequestName;

    new-instance v0, Lcom/android/camera/IntentRequestName;

    const-string v1, "Square"

    const/4 v2, 0x5

    const-string v3, "captureSquare"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/IntentRequestName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/IntentRequestName;->Square:Lcom/android/camera/IntentRequestName;

    new-instance v0, Lcom/android/camera/IntentRequestName;

    const-string v1, "Notes"

    const/4 v2, 0x6

    const-string v3, "notes"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/IntentRequestName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/IntentRequestName;->Notes:Lcom/android/camera/IntentRequestName;

    new-instance v0, Lcom/android/camera/IntentRequestName;

    const-string v1, "Unknown"

    const/4 v2, 0x7

    const-string v3, "unknown"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/IntentRequestName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/camera/IntentRequestName;->Unknown:Lcom/android/camera/IntentRequestName;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/camera/IntentRequestName;

    sget-object v1, Lcom/android/camera/IntentRequestName;->Album:Lcom/android/camera/IntentRequestName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/camera/IntentRequestName;->Contacts:Lcom/android/camera/IntentRequestName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/camera/IntentRequestName;->Mail:Lcom/android/camera/IntentRequestName;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/camera/IntentRequestName;->Main:Lcom/android/camera/IntentRequestName;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/camera/IntentRequestName;->Mms:Lcom/android/camera/IntentRequestName;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/camera/IntentRequestName;->Square:Lcom/android/camera/IntentRequestName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/camera/IntentRequestName;->Notes:Lcom/android/camera/IntentRequestName;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/camera/IntentRequestName;->Unknown:Lcom/android/camera/IntentRequestName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/IntentRequestName;->$VALUES:[Lcom/android/camera/IntentRequestName;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/camera/IntentRequestName;->mNameTable:Ljava/util/Hashtable;

    sget-object v0, Lcom/android/camera/IntentRequestName;->mNameTable:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/camera/IntentRequestName;->Album:Lcom/android/camera/IntentRequestName;

    iget-object v1, v1, Lcom/android/camera/IntentRequestName;->mName:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/IntentRequestName;->Album:Lcom/android/camera/IntentRequestName;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/IntentRequestName;->mNameTable:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/camera/IntentRequestName;->Contacts:Lcom/android/camera/IntentRequestName;

    iget-object v1, v1, Lcom/android/camera/IntentRequestName;->mName:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/IntentRequestName;->Contacts:Lcom/android/camera/IntentRequestName;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/IntentRequestName;->mNameTable:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/camera/IntentRequestName;->Mail:Lcom/android/camera/IntentRequestName;

    iget-object v1, v1, Lcom/android/camera/IntentRequestName;->mName:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/IntentRequestName;->Mail:Lcom/android/camera/IntentRequestName;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/IntentRequestName;->mNameTable:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/camera/IntentRequestName;->Mms:Lcom/android/camera/IntentRequestName;

    iget-object v1, v1, Lcom/android/camera/IntentRequestName;->mName:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/IntentRequestName;->Mms:Lcom/android/camera/IntentRequestName;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/IntentRequestName;->mNameTable:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/camera/IntentRequestName;->Square:Lcom/android/camera/IntentRequestName;

    iget-object v1, v1, Lcom/android/camera/IntentRequestName;->mName:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/IntentRequestName;->Square:Lcom/android/camera/IntentRequestName;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/camera/IntentRequestName;->mNameTable:Ljava/util/Hashtable;

    sget-object v1, Lcom/android/camera/IntentRequestName;->Notes:Lcom/android/camera/IntentRequestName;

    iget-object v1, v1, Lcom/android/camera/IntentRequestName;->mName:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/IntentRequestName;->Notes:Lcom/android/camera/IntentRequestName;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/camera/IntentRequestName;->mName:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lcom/android/camera/IntentRequestName;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/camera/IntentRequestName;->Main:Lcom/android/camera/IntentRequestName;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/camera/IntentRequestName;->mNameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/IntentRequestName;->mNameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IntentRequestName;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/camera/IntentRequestName;->Unknown:Lcom/android/camera/IntentRequestName;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/camera/IntentRequestName;
    .locals 1

    const-class v0, Lcom/android/camera/IntentRequestName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IntentRequestName;

    return-object v0
.end method

.method public static values()[Lcom/android/camera/IntentRequestName;
    .locals 1

    sget-object v0, Lcom/android/camera/IntentRequestName;->$VALUES:[Lcom/android/camera/IntentRequestName;

    invoke-virtual {v0}, [Lcom/android/camera/IntentRequestName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/IntentRequestName;

    return-object v0
.end method
