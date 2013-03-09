.class public final Lcom/android/browser/AutoFillProfileDatabase$Profiles;
.super Ljava/lang/Object;
.source "AutoFillProfileDatabase.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/AutoFillProfileDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Profiles"
.end annotation


# static fields
.field static final ADDRESS_LINE_1:Ljava/lang/String; = "addressline1"

.field static final ADDRESS_LINE_2:Ljava/lang/String; = "addressline2"

.field static final CITY:Ljava/lang/String; = "city"

.field static final COMPANY_NAME:Ljava/lang/String; = "companyname"

.field static final COUNTRY:Ljava/lang/String; = "country"

.field static final EMAIL_ADDRESS:Ljava/lang/String; = "email"

.field static final FULL_NAME:Ljava/lang/String; = "fullname"

.field static final PHONE_NUMBER:Ljava/lang/String; = "phone"

.field static final STATE:Ljava/lang/String; = "state"

.field static final ZIP_CODE:Ljava/lang/String; = "zipcode"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
