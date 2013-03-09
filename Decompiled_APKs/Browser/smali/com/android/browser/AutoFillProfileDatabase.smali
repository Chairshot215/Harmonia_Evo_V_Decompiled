.class public Lcom/android/browser/AutoFillProfileDatabase;
.super Ljava/lang/Object;
.source "AutoFillProfileDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;,
        Lcom/android/browser/AutoFillProfileDatabase$Profiles;
    }
.end annotation


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "autofill.db"

.field static final DATABASE_VERSION:I = 0x2

.field static final LOGTAG:Ljava/lang/String; = "AutoFillProfileDatabase"

.field static final PROFILES_TABLE_NAME:Ljava/lang/String; = "profiles"

.field private static sInstance:Lcom/android/browser/AutoFillProfileDatabase;


# instance fields
.field private mOpenHelper:Lcom/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Lcom/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/AutoFillProfileDatabase;->mOpenHelper:Lcom/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;

    .line 85
    return-void
.end method

.method private getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "writable"

    .prologue
    .line 95
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/AutoFillProfileDatabase;->mOpenHelper:Lcom/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/AutoFillProfileDatabase;->mOpenHelper:Lcom/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/browser/AutoFillProfileDatabase;
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    sget-object v0, Lcom/android/browser/AutoFillProfileDatabase;->sInstance:Lcom/android/browser/AutoFillProfileDatabase;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/android/browser/AutoFillProfileDatabase;

    invoke-direct {v0, p0}, Lcom/android/browser/AutoFillProfileDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/browser/AutoFillProfileDatabase;->sInstance:Lcom/android/browser/AutoFillProfileDatabase;

    .line 91
    :cond_0
    sget-object v0, Lcom/android/browser/AutoFillProfileDatabase;->sInstance:Lcom/android/browser/AutoFillProfileDatabase;

    return-object v0
.end method


# virtual methods
.method public addOrUpdateProfile(ILandroid/webkit/WebSettings$AutoFillProfile;)V
    .locals 5
    .parameter "id"
    .parameter "profile"

    .prologue
    const/4 v4, 0x1

    .line 99
    const-string v1, "INSERT OR REPLACE INTO profiles (_id,fullname,email,companyname,addressline1,addressline2,city,state,zipcode,country,phone) VALUES (?,?,?,?,?,?,?,?,?,?,?);"

    .line 112
    .local v1, sql:Ljava/lang/String;
    const/16 v2, 0xb

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p2}, Landroid/webkit/WebSettings$AutoFillProfile;->getFullName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    const/4 v2, 0x2

    invoke-virtual {p2}, Landroid/webkit/WebSettings$AutoFillProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    invoke-virtual {p2}, Landroid/webkit/WebSettings$AutoFillProfile;->getCompanyName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    invoke-virtual {p2}, Landroid/webkit/WebSettings$AutoFillProfile;->getAddressLine1()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    invoke-virtual {p2}, Landroid/webkit/WebSettings$AutoFillProfile;->getAddressLine2()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    invoke-virtual {p2}, Landroid/webkit/WebSettings$AutoFillProfile;->getCity()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x7

    invoke-virtual {p2}, Landroid/webkit/WebSettings$AutoFillProfile;->getState()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x8

    invoke-virtual {p2}, Landroid/webkit/WebSettings$AutoFillProfile;->getZipCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x9

    invoke-virtual {p2}, Landroid/webkit/WebSettings$AutoFillProfile;->getCountry()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xa

    invoke-virtual {p2}, Landroid/webkit/WebSettings$AutoFillProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 123
    .local v0, params:[Ljava/lang/Object;
    invoke-direct {p0, v4}, Lcom/android/browser/AutoFillProfileDatabase;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "INSERT OR REPLACE INTO profiles (_id,fullname,email,companyname,addressline1,addressline2,city,state,zipcode,country,phone) VALUES (?,?,?,?,?,?,?,?,?,?,?);"

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/browser/AutoFillProfileDatabase;->mOpenHelper:Lcom/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/browser/AutoFillProfileDatabase$AutoFillProfileDatabaseHelper;->close()V

    .line 153
    return-void
.end method

.method public dropProfile(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    .line 146
    const-string v1, "DELETE FROM profiles WHERE _id = ?;"

    .line 147
    .local v1, sql:Ljava/lang/String;
    new-array v0, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 148
    .local v0, params:[Ljava/lang/Object;
    invoke-direct {p0, v4}, Lcom/android/browser/AutoFillProfileDatabase;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "DELETE FROM profiles WHERE _id = ?;"

    invoke-virtual {v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public getProfile(I)Landroid/database/Cursor;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 127
    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "fullname"

    aput-object v0, v2, v3

    const-string v0, "email"

    aput-object v0, v2, v6

    const/4 v0, 0x2

    const-string v1, "companyname"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "addressline1"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "addressline2"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "city"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "state"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "zipcode"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "country"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "phone"

    aput-object v1, v2, v0

    .line 140
    .local v2, cols:[Ljava/lang/String;
    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 141
    .local v4, selectArgs:[Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/browser/AutoFillProfileDatabase;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "profiles"

    const-string v3, "_id=?"

    const-string v8, "1"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
