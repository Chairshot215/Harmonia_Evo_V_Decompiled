.class Lcom/android/providers/telephony/MmsSmsDatabaseHelper$1;
.super Ljava/lang/Object;
.source "MmsSmsDatabaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->copySmsDateToDate2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/MmsSmsDatabaseHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 7023
    iput-object p1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$1;->this$0:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 7025
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "copySmsDateToDat2 >"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7027
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$1;->this$0:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "UPDATE sms SET date2 = date WHERE date2 = 0;"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7031
    :goto_0
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v2, "copySmsDateToDat2 <"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7032
    return-void

    .line 7028
    :catch_0
    move-exception v0

    .line 7029
    .local v0, e:Landroid/database/SQLException;
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_0
.end method
