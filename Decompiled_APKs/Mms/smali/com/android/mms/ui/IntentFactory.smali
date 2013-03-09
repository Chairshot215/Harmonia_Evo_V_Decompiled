.class public abstract Lcom/android/mms/ui/IntentFactory;
.super Ljava/lang/Object;
.source "IntentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/IntentFactory$Params;
    }
.end annotation


# static fields
.field private static final CATEGORY_ORDER:Ljava/lang/String; = "CATEGORY_ORDER"

.field public static final SEARCH:I = 0x1

.field private static final SERVO_SEARCH_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "content://servo_search/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/IntentFactory;->SERVO_SEARCH_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static varargs newIntent(I[Ljava/lang/Object;)Landroid/content/Intent;
    .locals 3
    .parameter "type"
    .parameter "params"

    .prologue
    .line 35
    packed-switch p0, :pswitch_data_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown intent type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :pswitch_0
    invoke-static {p1}, Lcom/android/mms/ui/IntentFactory;->newSearchIntent([Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static varargs newSearchIntent([Ljava/lang/Object;)Landroid/content/Intent;
    .locals 4
    .parameter "params"

    .prologue
    .line 43
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 44
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    sget-object v2, Lcom/android/mms/ui/IntentFactory;->SERVO_SEARCH_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 49
    const/4 v2, 0x1

    aget-object v0, p0, v2

    check-cast v0, Lcom/android/mms/category/Category;

    .line 54
    .local v0, category:Lcom/android/mms/category/Category;
    sget-object v2, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    invoke-virtual {v2, v0}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const-string v2, "CATEGORY_ORDER"

    const-string v3, "message/secure/msg"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    :goto_0
    return-object v1

    .line 57
    :cond_0
    const-string v2, "CATEGORY_ORDER"

    const-string v3, "message/msg"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
