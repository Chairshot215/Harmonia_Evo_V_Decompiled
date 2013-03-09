.class public final Lcom/htc/provider/ContactsContract$Picker;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Picker"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACCOUNT_MODE:Ljava/lang/String; = "filter_account_mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCOUNT_MODE_ALL:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCOUNT_MODE_EXCLUDE_READ_ONLY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCOUNT_MODE_EXCLUDE_SIM:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCOUNT_MODE_EXCLUDE_SIM_AND_READ_ONLY:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCOUNT_MODE_SIM:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXCLUDE_SIM_CONTACT:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PICK_SIM_CONTACT:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 918
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Picker;->PICK_SIM_CONTACT:Ljava/lang/String;

    sput-object v0, Lcom/htc/provider/ContactsContract$Picker;->PICK_SIM_CONTACT:Ljava/lang/String;

    .line 921
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Picker;->EXCLUDE_SIM_CONTACT:Ljava/lang/String;

    sput-object v0, Lcom/htc/provider/ContactsContract$Picker;->EXCLUDE_SIM_CONTACT:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
