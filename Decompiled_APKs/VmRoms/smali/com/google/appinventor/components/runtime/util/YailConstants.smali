.class public Lcom/google/appinventor/components/runtime/util/YailConstants;
.super Ljava/lang/Object;


# static fields
.field public static final YAIL_HEADER:Lgnu/mapping/SimpleSymbol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "*list*"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/YailConstants;->YAIL_HEADER:Lgnu/mapping/SimpleSymbol;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
