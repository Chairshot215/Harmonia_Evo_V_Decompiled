.class abstract Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;
.super Ljava/lang/Object;
.source "ApplicationsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdcardwizard/handler/ApplicationsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AppOperation"
.end annotation


# instance fields
.field protected context:Landroid/content/Context;

.field protected observer:Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;

.field protected packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->packageManager:Landroid/content/pm/PackageManager;

    .line 170
    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->observer:Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;

    .line 171
    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->context:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sdcardwizard/handler/ApplicationsHandler$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract exec(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
.end method

.method public setParams(Landroid/content/pm/PackageManager;Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;Landroid/content/Context;)V
    .locals 0
    .parameter "packageManager"
    .parameter "observer"
    .parameter "context"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->packageManager:Landroid/content/pm/PackageManager;

    .line 163
    iput-object p2, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->observer:Lcom/htc/sdcardwizard/handler/ApplicationsHandler$SizeObserver;

    .line 164
    iput-object p3, p0, Lcom/htc/sdcardwizard/handler/ApplicationsHandler$AppOperation;->context:Landroid/content/Context;

    .line 165
    return-void
.end method
